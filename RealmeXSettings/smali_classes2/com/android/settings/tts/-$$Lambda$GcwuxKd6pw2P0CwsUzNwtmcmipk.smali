.class public final synthetic Lcom/android/settings/tts/-$$Lambda$GcwuxKd6pw2P0CwsUzNwtmcmipk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/tts/-$$Lambda$GcwuxKd6pw2P0CwsUzNwtmcmipk;->f$0:Lcom/android/settings/tts/TextToSpeechSettings;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/-$$Lambda$GcwuxKd6pw2P0CwsUzNwtmcmipk;->f$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->a(I)V

    return-void
.end method
