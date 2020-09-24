.class public final Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;
.super Landroid/content/BroadcastReceiver;
.source "NfcPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

.field private final b:I

.field private final c:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;->a:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, -0x1

    .line 187
    iput p1, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;->b:I

    .line 192
    iput-object p2, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;->c:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 p1, -0x1

    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    .line 197
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "NfcSliceWorker"

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Nfc broadcast received, updating Slice."

    .line 208
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;->c:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

    .line 1182
    invoke-virtual {p1}, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->f()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Transitional update, dropping broadcast"

    .line 204
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
