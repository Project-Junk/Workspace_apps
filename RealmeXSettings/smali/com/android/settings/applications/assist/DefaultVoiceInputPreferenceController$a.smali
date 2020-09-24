.class final Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$a;
.super Lcom/android/settings/applications/assist/a;
.source "DefaultVoiceInputPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$a;->a:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;

    invoke-direct {p0}, Lcom/android/settings/applications/assist/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$a;->a:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->a(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V

    return-void
.end method
