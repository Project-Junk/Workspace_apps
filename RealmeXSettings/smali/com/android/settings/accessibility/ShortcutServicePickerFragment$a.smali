.class final Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;
.super Lcom/android/settingslib/widget/g;
.source "ShortcutServicePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

.field final b:I

.field final c:Ljava/lang/String;

.field final synthetic d:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;ILjava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;->d:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    const/4 p1, 0x1

    .line 229
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/g;-><init>(Z)V

    .line 230
    iput-object p2, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;->a:Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 231
    iput p3, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;->b:I

    .line 232
    iput-object p4, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;->a:Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;->d:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;->d:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;->b:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;->c:Ljava/lang/String;

    return-object v0
.end method
