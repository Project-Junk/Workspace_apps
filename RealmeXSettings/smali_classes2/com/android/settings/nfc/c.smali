.class public final Lcom/android/settings/nfc/c;
.super Landroid/database/ContentObserver;
.source "NfcAirplaneModeObserver.java"


# static fields
.field static final b:Landroid/net/Uri;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final a:Landroid/content/Context;

.field private final c:Landroid/nfc/NfcAdapter;

.field private final d:Landroidx/preference/Preference;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "airplane_mode_on"

    .line 42
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/nfc/c;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroidx/preference/Preference;)V
    .locals 2

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 46
    iput-object p1, p0, Lcom/android/settings/nfc/c;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/settings/nfc/c;->c:Landroid/nfc/NfcAdapter;

    .line 48
    iput-object p3, p0, Lcom/android/settings/nfc/c;->d:Landroidx/preference/Preference;

    .line 49
    invoke-direct {p0}, Lcom/android/settings/nfc/c;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/settings/nfc/c;->a:Landroid/content/Context;

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/nfc/c;->e:I

    const-string v2, "airplane_mode_on"

    .line 67
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 69
    iget v1, p0, Lcom/android/settings/nfc/c;->e:I

    if-ne v0, v1, :cond_0

    return-void

    .line 73
    :cond_0
    iput v0, p0, Lcom/android/settings/nfc/c;->e:I

    .line 74
    iget v0, p0, Lcom/android/settings/nfc/c;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/settings/nfc/c;->c:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 77
    iget-object v0, p0, Lcom/android/settings/nfc/c;->d:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/nfc/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/c;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 63
    invoke-direct {p0}, Lcom/android/settings/nfc/c;->a()V

    return-void
.end method
