.class public abstract Lcom/android/settings/nfc/b;
.super Ljava/lang/Object;
.source "BaseNfcEnabler.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Landroid/nfc/NfcAdapter;

.field private final c:Landroid/content/IntentFilter;

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/settings/nfc/b$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/b$1;-><init>(Lcom/android/settings/nfc/b;)V

    iput-object v0, p0, Lcom/android/settings/nfc/b;->d:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/android/settings/nfc/b;->a:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/b;->b:Landroid/nfc/NfcAdapter;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/nfc/b;->c()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/settings/nfc/b;->c:Landroid/content/IntentFilter;

    return-void

    .line 54
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/nfc/b;->c:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/nfc/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/b;->b:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/b;->a(I)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/nfc/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/b;->d:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/b;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected abstract a(I)V
.end method

.method public final b()V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/nfc/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/b;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/nfc/b;->b:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
