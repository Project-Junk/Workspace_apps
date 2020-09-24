.class public final Lcom/felicanetworks/felica/FelicaAdapter;
.super Ljava/lang/Object;
.source "FelicaAdapter.java"


# static fields
.field static final TAG:Ljava/lang/String; = "FelicaAdapter"

.field static sFelicaAdapters:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lcom/felicanetworks/felica/FelicaAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static sIsInitialized:Z = false

.field static sService:Lcom/felicanetworks/felica/IFelicaAdapter;


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/FelicaAdapter;->sFelicaAdapters:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/felicanetworks/felica/FelicaAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Lcom/felicanetworks/felica/FelicaAdapter;
    .locals 1

    if-eqz p0, :cond_1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/felicanetworks/felica/FelicaAdapter;->getFelicaAdapter(Landroid/content/Context;)Lcom/felicanetworks/felica/FelicaAdapter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context not associated with any application (using a mock context?)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static declared-synchronized getFelicaAdapter(Landroid/content/Context;)Lcom/felicanetworks/felica/FelicaAdapter;
    .locals 3

    const-class v0, Lcom/felicanetworks/felica/FelicaAdapter;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-boolean v1, Lcom/felicanetworks/felica/FelicaAdapter;->sIsInitialized:Z

    if-nez v1, :cond_2

    .line 80
    invoke-static {}, Lcom/felicanetworks/felica/FelicaAdapter;->hasNfcFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-static {}, Lcom/felicanetworks/felica/FelicaAdapter;->getServiceInterface()Lcom/felicanetworks/felica/IFelicaAdapter;

    move-result-object v1

    sput-object v1, Lcom/felicanetworks/felica/FelicaAdapter;->sService:Lcom/felicanetworks/felica/IFelicaAdapter;

    .line 86
    sget-object v1, Lcom/felicanetworks/felica/FelicaAdapter;->sService:Lcom/felicanetworks/felica/IFelicaAdapter;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 91
    sput-boolean v1, Lcom/felicanetworks/felica/FelicaAdapter;->sIsInitialized:Z

    goto :goto_0

    :cond_0
    const-string p0, "FelicaAdapter"

    const-string v1, "could not retrieve FeliCa with NFC service"

    .line 87
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "FelicaAdapter"

    const-string v1, "this device does not have NFC support"

    .line 81
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 93
    :cond_2
    :goto_0
    sget-object v1, Lcom/felicanetworks/felica/FelicaAdapter;->sFelicaAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felica/FelicaAdapter;

    if-nez v1, :cond_3

    .line 95
    new-instance v1, Lcom/felicanetworks/felica/FelicaAdapter;

    invoke-direct {v1, p0}, Lcom/felicanetworks/felica/FelicaAdapter;-><init>(Landroid/content/Context;)V

    .line 96
    sget-object v2, Lcom/felicanetworks/felica/FelicaAdapter;->sFelicaAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getServiceInterface()Lcom/felicanetworks/felica/IFelicaAdapter;
    .locals 1

    const-string v0, "felica"

    .line 123
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    invoke-static {v0}, Lcom/felicanetworks/felica/IFelicaAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/felica/IFelicaAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static hasNfcFeature()Z
    .locals 4

    .line 107
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "FelicaAdapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Cannot get package manager, assuming no NFC feature"

    .line 109
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    const-string v3, "android.hardware.nfc"

    .line 113
    invoke-interface {v0, v3, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "Package manager query failed, assuming no NFC feature"

    .line 115
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method


# virtual methods
.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "FelicaAdapter"

    const-string v0, "NFC service dead - attempting to recover"

    .line 147
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    invoke-static {}, Lcom/felicanetworks/felica/FelicaAdapter;->getServiceInterface()Lcom/felicanetworks/felica/IFelicaAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "could not retrieve NFC service during service recovery"

    .line 150
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 158
    :cond_0
    sput-object p1, Lcom/felicanetworks/felica/FelicaAdapter;->sService:Lcom/felicanetworks/felica/IFelicaAdapter;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/felicanetworks/felica/FelicaAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getFelicaAdapterExtraInterface()Lcom/felicanetworks/felica/IFelicaAdapterExtra;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/felicanetworks/felica/FelicaAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    sget-object v1, Lcom/felicanetworks/felica/FelicaAdapter;->sService:Lcom/felicanetworks/felica/IFelicaAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/felicanetworks/felica/IFelicaAdapter;->getFelicaAdapterExtraInterface(Ljava/lang/String;)Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {p0, v0}, Lcom/felicanetworks/felica/FelicaAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need a context on FelicaAdapter to use the  FeliCa extras APIs"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFelicaRfService()Lcom/felicanetworks/felica/IFelicaRf;
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/felicanetworks/felica/FelicaAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 197
    :try_start_0
    sget-object v2, Lcom/felicanetworks/felica/FelicaAdapter;->sService:Lcom/felicanetworks/felica/IFelicaAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/felicanetworks/felica/IFelicaAdapter;->getFelicaRfInterface(Ljava/lang/String;)Lcom/felicanetworks/felica/IFelicaRf;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {p0, v0}, Lcom/felicanetworks/felica/FelicaAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    :catch_1
    return-object v1

    .line 193
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need a context on NfcAdapter to use the  FeliCa RF APIs"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFelicaSeService()Lcom/felicanetworks/felica/IFelicaSe;
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/felicanetworks/felica/FelicaAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 176
    :try_start_0
    sget-object v2, Lcom/felicanetworks/felica/FelicaAdapter;->sService:Lcom/felicanetworks/felica/IFelicaAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/felicanetworks/felica/IFelicaAdapter;->getFelicaSeInterface(Ljava/lang/String;)Lcom/felicanetworks/felica/IFelicaSe;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {p0, v0}, Lcom/felicanetworks/felica/FelicaAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    :catch_1
    return-object v1

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need a context on NfcAdapter to use the  FeliCa SE APIs"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
