.class final Lcom/android/settings/accessibility/AccessibilitySettings$4;
.super Lcom/android/settings/accessibility/b;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$4;->a:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/b;-><init>(Landroid/os/Handler;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 277
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$4;->a:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->a()V

    return-void
.end method
