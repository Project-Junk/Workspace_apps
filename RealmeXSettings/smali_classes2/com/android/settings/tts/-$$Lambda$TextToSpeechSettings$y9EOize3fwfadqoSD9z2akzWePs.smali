.class public final synthetic Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$y9EOize3fwfadqoSD9z2akzWePs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/tts/TextToSpeechSettings;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$y9EOize3fwfadqoSD9z2akzWePs;->f$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iput-boolean p2, p0, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$y9EOize3fwfadqoSD9z2akzWePs;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$y9EOize3fwfadqoSD9z2akzWePs;->f$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-boolean v1, p0, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$y9EOize3fwfadqoSD9z2akzWePs;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->lambda$y9EOize3fwfadqoSD9z2akzWePs(Lcom/android/settings/tts/TextToSpeechSettings;Z)V

    return-void
.end method
