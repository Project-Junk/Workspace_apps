.class public final Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;
.super Ljava/lang/Object;
.source "FelicaAdapterExtra.java"


# static fields
.field public static final ACTION_ADAPTER_RW_P2P_STATE_CHANGED:Ljava/lang/String; = "com.felicanetworks.felicaextra.action.ADAPTER_RW_P2P_STATE_CHANGED"

.field private static final DEBUG:Z = true

.field public static final EXTRA_ADAPTER_RW_P2P_STATE:Ljava/lang/String; = "com.felicanetworks.felicaextra.extra.ADAPTER_RW_P2P_STATE"

.field private static final RI_TOOL_PACKAGE_NAME:Ljava/lang/String; = "com.felicanetworks.test.android.nfcservice.settings"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final STATE_RW_P2P_OFF:I = 0xb

.field public static final STATE_RW_P2P_ON:I = 0xd

.field public static final STATE_RW_P2P_TURNING_OFF:I = 0xe

.field public static final STATE_RW_P2P_TURNING_ON:I = 0xc

.field private static final TAG:Ljava/lang/String; = "FelicaAdapterExtra"

.field private static final sFelicaExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/felicanetworks/felica/FelicaAdapter;",
            "Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Lcom/felicanetworks/felica/IFelicaAdapterExtra;


# instance fields
.field private final mAdapter:Lcom/felicanetworks/felica/FelicaAdapter;

.field private final mContext:Landroid/content/Context;

.field final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sFelicaExtras:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/felicanetworks/felica/FelicaAdapter;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->mAdapter:Lcom/felicanetworks/felica/FelicaAdapter;

    .line 131
    invoke-virtual {p1}, Lcom/felicanetworks/felica/FelicaAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Lcom/felicanetworks/felica/FelicaAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static get(Lcom/felicanetworks/felica/FelicaAdapter;)Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/felicanetworks/felica/FelicaAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 116
    const-class v0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sService:Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    if-nez v1, :cond_0

    .line 118
    invoke-static {p0}, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->initService(Lcom/felicanetworks/felica/FelicaAdapter;)V

    .line 120
    :cond_0
    sget-object v1, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sFelicaExtras:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;

    if-nez v1, :cond_1

    .line 122
    new-instance v1, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;

    invoke-direct {v1, p0}, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;-><init>(Lcom/felicanetworks/felica/FelicaAdapter;)V

    .line 123
    sget-object v2, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sFelicaExtras:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 112
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You must pass a context to your FelicaAdapter to use the FeliCa extra APIs"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initService(Lcom/felicanetworks/felica/FelicaAdapter;)V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/felicanetworks/felica/FelicaAdapter;->getFelicaAdapterExtraInterface()Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 96
    sput-object p0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sService:Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    :cond_0
    return-void
.end method


# virtual methods
.method attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "FelicaAdapterExtra"

    const-string v1, "FeliCa Adapter Extra dead - attempting to recover"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sFelicaExtras:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->mAdapter:Lcom/felicanetworks/felica/FelicaAdapter;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->mAdapter:Lcom/felicanetworks/felica/FelicaAdapter;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/FelicaAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 142
    iget-object p0, p0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->mAdapter:Lcom/felicanetworks/felica/FelicaAdapter;

    invoke-static {p0}, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->initService(Lcom/felicanetworks/felica/FelicaAdapter;)V

    return-void
.end method

.method public disable()Z
    .locals 2

    .line 257
    :try_start_0
    sget-object v0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sService:Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/felicanetworks/felica/IFelicaAdapterExtra;->disable(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {p0, v0}, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method

.method public disable(Z)Z
    .locals 1

    .line 280
    :try_start_0
    sget-object v0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sService:Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    invoke-interface {v0, p1}, Lcom/felicanetworks/felica/IFelicaAdapterExtra;->disable(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method

.method public enable()Z
    .locals 1

    .line 216
    :try_start_0
    sget-object v0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sService:Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    invoke-interface {v0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra;->enable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {p0, v0}, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getAdapterRwP2pState()I
    .locals 1

    .line 299
    :try_start_0
    sget-object v0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sService:Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    invoke-interface {v0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra;->getRwP2pState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 301
    invoke-virtual {p0, v0}, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/16 p0, 0xb

    return p0
.end method

.method public getAdapterState()I
    .locals 1

    .line 187
    :try_start_0
    sget-object v0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sService:Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    invoke-interface {v0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra;->getState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 161
    :try_start_0
    sget-object v1, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sService:Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    invoke-interface {v1}, Lcom/felicanetworks/felica/IFelicaAdapterExtra;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return v0

    .line 164
    :cond_0
    sget-object v1, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sService:Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    invoke-interface {v1}, Lcom/felicanetworks/felica/IFelicaAdapterExtra;->getRwP2pState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xd

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 167
    invoke-virtual {p0, v1}, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    return v0
.end method

.method public prepareSwitchedOffState()V
    .locals 1

    .line 339
    :try_start_0
    sget-object v0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sService:Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    invoke-interface {v0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra;->prepareSwitchedOffState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {p0, v0}, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setRwP2pMode(Z)Z
    .locals 1

    .line 323
    :try_start_0
    sget-object v0, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->sService:Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    invoke-interface {v0, p1}, Lcom/felicanetworks/felica/IFelicaAdapterExtra;->setRwP2pMode(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 325
    invoke-virtual {p0, p1}, Lcom/felicanetworks/felicaextra/FelicaAdapterExtra;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method
