.class final Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "AccessibilityShortcutPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;->a:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;->a:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->c_()V

    return-void
.end method
