.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "ColorAccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$2;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$2;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->c(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$2;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 217
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$2;->a()V

    return-void
.end method

.method public final onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$2;->a()V

    return-void
.end method

.method public final onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$2;->a()V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$2;->a()V

    return-void
.end method
