.class public final Lcom/android/settings/nfc/e;
.super Ljava/lang/Object;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/e$c;,
        Lcom/android/settings/nfc/e$b;,
        Lcom/android/settings/nfc/e$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/android/internal/content/PackageMonitor;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/nfc/e$b;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/android/settings/nfc/e$b;

.field private final e:Landroid/nfc/NfcAdapter;

.field private final f:Landroid/nfc/cardemulation/CardEmulation;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/nfc/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/settings/nfc/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/e$c;-><init>(Lcom/android/settings/nfc/e;B)V

    iput-object v0, p0, Lcom/android/settings/nfc/e;->b:Lcom/android/internal/content/PackageMonitor;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/e;->g:Ljava/util/ArrayList;

    .line 64
    iput-object p1, p0, Lcom/android/settings/nfc/e;->a:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/e;->e:Landroid/nfc/NfcAdapter;

    .line 67
    iget-object p1, p0, Lcom/android/settings/nfc/e;->e:Landroid/nfc/NfcAdapter;

    invoke-static {p1}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/e;->f:Landroid/nfc/cardemulation/CardEmulation;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/nfc/e;->a()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/settings/nfc/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/e$a;

    .line 138
    invoke-interface {v1}, Lcom/android/settings/nfc/e$a;->onPaymentAppsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 81
    iget-object v0, p0, Lcom/android/settings/nfc/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/settings/nfc/e;->f:Landroid/nfc/cardemulation/CardEmulation;

    const-string v2, "payment"

    .line 83
    invoke-virtual {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/nfc/e;->d()V

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/e;->c()Landroid/content/ComponentName;

    move-result-object v3

    .line 93
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 94
    new-instance v7, Lcom/android/settings/nfc/e$b;

    invoke-direct {v7}, Lcom/android/settings/nfc/e$b;-><init>()V

    .line 95
    invoke-virtual {v6, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/nfc/e$b;->a:Ljava/lang/CharSequence;

    .line 96
    iget-object v8, v7, Lcom/android/settings/nfc/e$b;->a:Ljava/lang/CharSequence;

    if-nez v8, :cond_1

    .line 97
    invoke-virtual {v6, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/nfc/e$b;->a:Ljava/lang/CharSequence;

    .line 99
    :cond_1
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/settings/nfc/e$b;->c:Z

    .line 100
    iget-boolean v8, v7, Lcom/android/settings/nfc/e$b;->c:Z

    if-eqz v8, :cond_2

    move-object v5, v7

    .line 103
    :cond_2
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/nfc/e$b;->d:Landroid/content/ComponentName;

    .line 104
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 106
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Lcom/android/settings/nfc/e$b;->d:Landroid/content/ComponentName;

    .line 107
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v7, Lcom/android/settings/nfc/e$b;->e:Landroid/content/ComponentName;

    goto :goto_1

    .line 110
    :cond_3
    iput-object v4, v7, Lcom/android/settings/nfc/e$b;->e:Landroid/content/ComponentName;

    .line 112
    :goto_1
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/android/settings/nfc/e$b;->b:Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_4
    iput-object v2, p0, Lcom/android/settings/nfc/e;->c:Ljava/util/ArrayList;

    .line 116
    iput-object v5, p0, Lcom/android/settings/nfc/e;->d:Lcom/android/settings/nfc/e$b;

    .line 117
    invoke-direct {p0}, Lcom/android/settings/nfc/e;->d()V

    return-void
.end method

.method public final a(Landroid/content/ComponentName;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/settings/nfc/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "nfc_payment_default_component"

    .line 167
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/nfc/e;->a()V

    return-void
.end method

.method public final a(Lcom/android/settings/nfc/e$a;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/settings/nfc/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/android/settings/nfc/e$a;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/settings/nfc/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final b()Z
    .locals 3

    const/4 v0, 0x0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nfc/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_foreground"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method final c()Landroid/content/ComponentName;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/settings/nfc/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_payment_default_component"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
