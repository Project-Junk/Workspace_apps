.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ColorAccessibilityShortcutPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;Z)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment$1;->b:Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment$1;->b:Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment$1;->a:Z

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;Z)V

    return-void
.end method
