.class public final Lcom/android/settings/ActivityPicker$c$a;
.super Ljava/lang/Object;
.source "ActivityPicker.java"

# interfaces
.implements Lcom/android/settings/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field protected static a:Lcom/android/settings/ActivityPicker$b;


# instance fields
.field b:Ljava/lang/CharSequence;

.field c:Landroid/graphics/drawable/Drawable;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$c$a;->b:Ljava/lang/CharSequence;

    .line 240
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$c$a;->b:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$c$a;->b:Ljava/lang/CharSequence;

    .line 244
    :cond_0
    invoke-static {p1}, Lcom/android/settings/ActivityPicker$c$a;->a(Landroid/content/Context;)Lcom/android/settings/ActivityPicker$b;

    move-result-object p1

    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/ActivityPicker$b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ActivityPicker$c$a;->c:Landroid/graphics/drawable/Drawable;

    .line 245
    iget-object p1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/ActivityPicker$c$a;->d:Ljava/lang/String;

    .line 246
    iget-object p1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/ActivityPicker$c$a;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/android/settings/ActivityPicker$c$a;->b:Ljava/lang/CharSequence;

    .line 231
    invoke-static {p1}, Lcom/android/settings/ActivityPicker$c$a;->a(Landroid/content/Context;)Lcom/android/settings/ActivityPicker$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/settings/ActivityPicker$b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ActivityPicker$c$a;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/android/settings/ActivityPicker$b;
    .locals 2

    .line 212
    sget-object v0, Lcom/android/settings/ActivityPicker$c$a;->a:Lcom/android/settings/ActivityPicker$b;

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x1050000

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 215
    new-instance v1, Lcom/android/settings/ActivityPicker$b;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-direct {v1, v0, v0, p0}, Lcom/android/settings/ActivityPicker$b;-><init>(IILandroid/util/DisplayMetrics;)V

    sput-object v1, Lcom/android/settings/ActivityPicker$c$a;->a:Lcom/android/settings/ActivityPicker$b;

    .line 217
    :cond_0
    sget-object p0, Lcom/android/settings/ActivityPicker$c$a;->a:Lcom/android/settings/ActivityPicker$b;

    return-object p0
.end method


# virtual methods
.method final a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 256
    iget-object p1, p0, Lcom/android/settings/ActivityPicker$c$a;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ActivityPicker$c$a;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object p1, p0, Lcom/android/settings/ActivityPicker$c$a;->f:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.action.CREATE_SHORTCUT"

    .line 264
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object p1, p0, Lcom/android/settings/ActivityPicker$c$a;->b:Ljava/lang/CharSequence;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$c$a;->b:Ljava/lang/CharSequence;

    return-object v0
.end method
