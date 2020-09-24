.class final Lcom/android/settings/accessibility/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 177
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$1;->a:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$1;->a:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$1;->a:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->b()V

    :cond_0
    return-void
.end method
