.class Lorg/codeaurora/ims/ImsSubController$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsSubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSubController;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSubController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSubController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 787
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 789
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSubController;->-$$Nest$misDisposed(Lorg/codeaurora/ims/ImsSubController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const-string v0, "onReceive, returning as isDisposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    return-void

    .line 793
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    const-string v1, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 797
    .local v1, "activeModemCount":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsSubController;->-$$Nest$mhandleOnMultiSimConfigChanged(Lorg/codeaurora/ims/ImsSubController;I)V

    .line 799
    .end local v1    # "activeModemCount":I
    :cond_1
    return-void
.end method
