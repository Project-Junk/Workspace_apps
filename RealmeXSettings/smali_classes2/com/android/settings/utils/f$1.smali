.class final Lcom/android/settings/utils/f$1;
.super Landroid/app/VoiceInteractor$CompleteVoiceRequest;
.source "VoiceSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/utils/f;->a(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/utils/f;


# direct methods
.method constructor <init>(Lcom/android/settings/utils/f;Ljava/lang/CharSequence;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/utils/f$1;->a:Lcom/android/settings/utils/f;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final onCompleteResult(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/android/settings/utils/f$1;->a:Lcom/android/settings/utils/f;

    invoke-virtual {p1}, Lcom/android/settings/utils/f;->finish()V

    return-void
.end method
