.class final Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;
.super Lcom/android/settings/applications/assist/a;
.source "AssistScreenshotPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;->a:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;

    invoke-direct {p0}, Lcom/android/settings/applications/assist/a;-><init>()V

    const-string p1, "assist_screenshot_enabled"

    .line 124
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;->b:Landroid/net/Uri;

    const-string p1, "assist_structure_enabled"

    .line 126
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 130
    new-array v0, v0, [Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;->c:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;->a:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->a(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)V

    return-void
.end method
