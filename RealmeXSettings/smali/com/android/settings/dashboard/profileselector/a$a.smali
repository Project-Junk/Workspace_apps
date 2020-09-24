.class public final Lcom/android/settings/dashboard/profileselector/a$a;
.super Ljava/lang/Object;
.source "UserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/profileselector/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/UserHandle;

.field final b:Landroid/graphics/drawable/Drawable;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/a$a;->a:Landroid/os/UserHandle;

    .line 55
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/a$a;->a:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f120d26

    .line 58
    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/a$a;->c:Ljava/lang/String;

    const-string p1, "com.android.internal.R.drawable.ic_corp_badge"

    .line 60
    invoke-static {p1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 59
    invoke-virtual {p3, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/a$a;->c:Ljava/lang/String;

    .line 63
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 64
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v0

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x0

    .line 67
    invoke-static {p2, p1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1075
    :goto_0
    new-instance p2, Lcom/android/settingslib/g/b;

    invoke-static {p3}, Lcom/android/settingslib/g/b;->b(Landroid/content/Context;)I

    move-result p3

    invoke-direct {p2, p3}, Lcom/android/settingslib/g/b;-><init>(I)V

    .line 1076
    invoke-virtual {p2, p1}, Lcom/android/settingslib/g/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/g/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/g/b;->a()Lcom/android/settingslib/g/b;

    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/a$a;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method
