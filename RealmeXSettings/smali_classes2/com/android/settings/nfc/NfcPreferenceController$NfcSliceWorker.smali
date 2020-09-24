.class public Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;
.super Lcom/android/settings/slices/c;
.source "NfcPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NfcSliceWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/c<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/c;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 163
    new-instance p1, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;-><init>(Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;)V

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->b:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1067
    iget-object v0, p0, Lcom/android/settings/slices/c;->d:Landroid/content/Context;

    .line 168
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->b:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;

    sget-object v2, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 2067
    iget-object v0, p0, Lcom/android/settings/slices/c;->d:Landroid/content/Context;

    .line 173
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->b:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->b:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$a;

    return-void
.end method
