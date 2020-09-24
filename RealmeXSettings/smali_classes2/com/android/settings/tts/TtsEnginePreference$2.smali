.class final Lcom/android/settings/tts/TtsEnginePreference$2;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TtsEnginePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lcom/android/settings/tts/TtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->b:Lcom/android/settings/tts/TtsEnginePreference;

    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->b:Lcom/android/settings/tts/TtsEnginePreference;

    iget-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->a:Landroid/widget/CompoundButton;

    invoke-static {p1, p2}, Lcom/android/settings/tts/TtsEnginePreference;->a(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/Checkable;)V

    return-void
.end method
