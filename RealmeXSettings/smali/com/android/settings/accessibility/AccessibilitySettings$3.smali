.class final Lcom/android/settings/accessibility/AccessibilitySettings$3;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$3;->a:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$3;->a:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->c(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    return-void
.end method
