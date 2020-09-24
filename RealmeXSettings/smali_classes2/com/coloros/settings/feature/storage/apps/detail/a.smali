.class public final Lcom/coloros/settings/feature/storage/apps/detail/a;
.super Lcom/android/settingslib/core/a;
.source "ColorAppDetailHeaderController.java"


# instance fields
.field private a:Lcom/coloros/settings/feature/storage/apps/usage/b;

.field private b:Lcom/android/settingslib/widget/LayoutPreference;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/storage/apps/usage/b;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->b:Lcom/android/settingslib/widget/LayoutPreference;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/detail/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->b:Lcom/android/settingslib/widget/LayoutPreference;

    .line 58
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->b:Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a009d

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->c:Landroid/widget/ImageView;

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->b:Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a009f

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->d:Landroid/widget/TextView;

    .line 60
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->b:Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a00ad

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->e:Landroid/widget/TextView;

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->g:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->c:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/b;->g:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->mContext:Landroid/content/Context;

    const v1, 0x7f12155c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->a:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "header_view"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
