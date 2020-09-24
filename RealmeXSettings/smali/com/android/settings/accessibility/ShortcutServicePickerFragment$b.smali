.class final Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;
.super Lcom/android/settingslib/widget/g;
.source "ShortcutServicePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field final synthetic b:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;->b:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    const/4 p1, 0x1

    .line 255
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/g;-><init>(Z)V

    .line 256
    iput-object p2, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;->a:Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;->b:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;->a:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 263
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;->a:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 272
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 271
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 273
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    return-object v2
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;->a:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;->b:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    .line 285
    invoke-virtual {v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080699

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;->b:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    .line 286
    invoke-virtual {v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;->a:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
