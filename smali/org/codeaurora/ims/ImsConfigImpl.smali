.class public Lorg/codeaurora/ims/ImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;,
        Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;,
        Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;
    }
.end annotation


# static fields
.field private static final EVENT_ACCESS_PROVISIONED_VAL:I = 0x1

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x2


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private mIsCarrierConfigLoaded:Z

.field private mIsContentObserversRegistered:Z

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mVoWiFiModeObserver:Landroid/database/ContentObserver;

.field private mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

.field private mWfcModeUri:Landroid/net/Uri;

.field private mWfcRoamingModeUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceSub(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 0

    iget p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriptionManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoWiFiModeObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoWiFiRoamingModeObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcModeUri(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcRoamingModeUri(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmImsMmTelManager(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ims/ImsMmTelManager;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCarrierConfigLoaded(Lorg/codeaurora/ims/ImsConfigImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsContentObserversRegistered(Lorg/codeaurora/ims/ImsConfigImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubId(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWfcModeUri(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWfcRoamingModeUri(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSubscriptionCache(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->clearSubscriptionCache()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAccessProvisionedValDone(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/telephony/utils/AsyncResult;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onAccessProvisionedValDone(Lorg/codeaurora/telephony/utils/AsyncResult;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSetFeatureResponseDone(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->onSetFeatureResponseDone(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 4
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;

    .line 108
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 55
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    .line 57
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    .line 59
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 60
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 62
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 64
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$1;

    new-instance v1, Landroid/os/Handler;

    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$1;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    .line 71
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$2;

    new-instance v1, Landroid/os/Handler;

    .line 72
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$2;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    .line 79
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$3;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$3;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$4;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$4;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 109
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 110
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 111
    iput-object p3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    .line 114
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 116
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 118
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_0

    .line 120
    :cond_0
    const-string v0, "unable to listen for subscription changed due to subscriptionManager is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "org.codeaurora.intent.action.ESSENTIAL_RECORDS_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method private clearSubscriptionCache()V
    .locals 3

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    .line 188
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    .line 189
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 192
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 194
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 197
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    .line 198
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    .line 199
    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "fn"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 370
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    return-void
.end method

.method private getOperationStatus(Ljava/lang/Object;Ljava/lang/Throwable;)I
    .locals 5
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOperationStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    if-nez p2, :cond_0

    .line 350
    const/4 v0, 0x0

    return v0

    .line 352
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    instance-of v1, p2, Lorg/codeaurora/ims/ImsRilException;

    if-nez v1, :cond_1

    goto :goto_0

    .line 356
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 357
    .local v1, "config":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    .line 358
    return v0

    .line 360
    :cond_2
    move-object v2, p2

    check-cast v2, Lorg/codeaurora/ims/ImsRilException;

    .line 361
    .local v2, "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 362
    const/4 v0, 0x2

    return v0

    .line 364
    :cond_3
    return v0

    .line 354
    .end local v1    # "config":I
    .end local v2    # "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    :cond_4
    :goto_0
    return v0
.end method

.method private onAccessProvisionedValDone(Lorg/codeaurora/telephony/utils/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;
    .param p2, "accessType"    # I

    .line 298
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 299
    .local v0, "response":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Ljava/lang/Object;Ljava/lang/Throwable;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 300
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    iput-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    .line 301
    monitor-enter v0

    .line 302
    :try_start_0
    const-string v1, "Notifyall"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 304
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSetFeatureResponseDone(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 308
    if-nez p1, :cond_0

    .line 309
    const-string v0, "onSetFeatureResponseDone :: AsyncResult is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    .line 314
    .local v0, "listener":Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;
    const/4 v1, 0x0

    .line 317
    .local v1, "capabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    :try_start_0
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v1, v2

    .line 318
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 321
    goto :goto_0

    .line 319
    :catch_0
    move-exception v2

    .line 320
    .local v2, "ex":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetFeatureResponseDone :: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    :goto_0
    if-nez v0, :cond_1

    .line 324
    const-string v2, "onSetFeatureResponseDone :: listener is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    return-void

    .line 328
    :cond_1
    if-nez v1, :cond_2

    .line 329
    const-string v2, "onSetFeatureResponseDone :: capabilityStatusList is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    return-void

    .line 333
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/CapabilityStatus;

    .line 334
    .local v3, "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    iget-object v4, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 335
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v4

    .line 336
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v5

    .line 337
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result v6

    .line 335
    invoke-interface {v0, v4, v5, v6}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;->onSetCapabilityValueSuccess(III)V

    goto :goto_2

    .line 339
    :cond_3
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v4

    .line 340
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v5

    sget-object v6, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ERROR_GENERIC:Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 339
    invoke-interface {v0, v4, v5, v6}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;->onSetCapabilityValueFailure(IILorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)V

    .line 343
    .end local v3    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    :goto_2
    goto :goto_1

    .line 344
    :cond_4
    return-void
.end method

.method private sendSetConfigRequest(II)I
    .locals 7
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 451
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x2c

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 453
    .local v0, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 454
    .local v1, "retVal":I
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 455
    return v1
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose :: Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 145
    :cond_0
    return-void
.end method

.method public getConfigInt(I)I
    .locals 9
    .param p1, "item"    # I

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigInt :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    const-string v0, "getConfigInt"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 417
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    return v1

    .line 420
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x2d

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 422
    .local v0, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 424
    .local v1, "retVal":I
    :goto_0
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 425
    return v1
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 9
    .param p1, "item"    # I

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigString :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    const-string v0, "getConfigString"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 439
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    return-object v1

    .line 442
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x2d

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 444
    .local v0, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 446
    .local v1, "retVal":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 447
    return-object v1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSubscriptionsChangeListener()Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .locals 1

    .line 536
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object v0
.end method

.method protected sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "requestType"    # I
    .param p2, "item"    # I
    .param p3, "event"    # I
    .param p4, "boolVal"    # Z
    .param p5, "intVal"    # I
    .param p6, "strVal"    # Ljava/lang/String;

    .line 382
    move-object v1, p0

    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v2

    .line 384
    .local v2, "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 385
    iget-object v3, v1, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v5

    iget-object v0, v1, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 387
    move v11, p3

    :try_start_1
    invoke-virtual {v0, p3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 385
    const/4 v9, 0x0

    move v4, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    .line 389
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 390
    :goto_0
    :try_start_2
    iget-object v0, v2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_0

    .line 392
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    :goto_1
    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    goto :goto_1

    .line 397
    :cond_0
    :try_start_4
    monitor-exit v2

    .line 401
    return-object v2

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl;
    .end local p1    # "requestType":I
    .end local p2    # "item":I
    .end local p3    # "event":I
    .end local p4    # "boolVal":Z
    .end local p5    # "intVal":I
    .end local p6    # "strVal":Ljava/lang/String;
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 398
    .restart local v2    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl;
    .restart local p1    # "requestType":I
    .restart local p2    # "item":I
    .restart local p3    # "event":I
    .restart local p4    # "boolVal":Z
    .restart local p5    # "intVal":I
    .restart local p6    # "strVal":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 401
    :catchall_1
    move-exception v0

    move v11, p3

    goto :goto_3

    .line 398
    :catch_2
    move-exception v0

    move v11, p3

    .line 399
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    const/4 v3, -0x1

    :try_start_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 401
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    return-object v2

    :catchall_2
    move-exception v0

    :goto_3
    return-object v2
.end method

.method protected sendSetConfigRequestAsync(II)V
    .locals 9
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSetConfigRequestAsync :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 461
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v3

    .line 460
    const/16 v2, 0x2c

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    .line 463
    return-void
.end method

.method public setCapabilityValue(Ljava/util/ArrayList;Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;)V
    .locals 3
    .param p2, "listener"    # Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;",
            "Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;",
            ")V"
        }
    .end annotation

    .line 529
    .local p1, "capabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setCapabilityValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setServiceStatus(Landroid/os/Message;Ljava/util/ArrayList;I)V

    .line 532
    return-void
.end method

.method public setConfig(II)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/16 v0, 0x1a

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 481
    const-string v0, "Ignore VoWiFi Roaming enable/disable"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    return v1

    .line 484
    :cond_0
    invoke-static {p1, v1}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    return v1

    .line 495
    :cond_1
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 496
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    const-string v0, "VoWiFi mode: config update is done only when mode preference is changed or when sim is loaded"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    return v1

    .line 501
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequest(II)I

    move-result v0

    return v0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 8
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x1

    return v0

    .line 520
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0x2c

    const/4 v4, 0x1

    move-object v1, p0

    move v3, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 522
    .local v0, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 523
    .local v1, "retVal":I
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 524
    return v1
.end method

.method public updateWFCMode(Z)I
    .locals 4
    .param p1, "isRoamingMode"    # Z

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWFCMode: sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isRoamingMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateWFCMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    .line 220
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-nez v1, :cond_1

    .line 226
    const-string v1, "updateWFCMode: mImsMmTelManager null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    return v0

    .line 230
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v1

    if-nez v1, :cond_2

    .line 231
    const-string v1, "Modem do not support WFC roaming config"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    return v0

    .line 236
    :cond_2
    if-eqz p1, :cond_3

    .line 237
    const/16 v1, 0x3eb

    .line 238
    .local v1, "item":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v2

    .local v2, "value":I
    goto :goto_0

    .line 240
    .end local v1    # "item":I
    .end local v2    # "value":I
    :cond_3
    const/16 v1, 0x1b

    .line 241
    .restart local v1    # "item":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v2

    .line 243
    .restart local v2    # "value":I
    :goto_0
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequestAsync(II)V

    .line 247
    .end local v1    # "item":I
    .end local v2    # "value":I
    nop

    .line 248
    const/4 v0, -0x1

    return v0

    .line 221
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWFCMode: invalid sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    return v0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update WFCMode: invalid sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    return v0
.end method

.method public updateWfcModeConfigurationsToModem()V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWfcModeConfigurationsToModem: mIsCarrierConfigLoaded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I

    .line 210
    :cond_0
    return-void
.end method
