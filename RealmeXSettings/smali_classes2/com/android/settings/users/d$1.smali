.class final Lcom/android/settings/users/d$1;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/d;-><init>(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/users/d;


# direct methods
.method constructor <init>(Lcom/android/settings/users/d;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settings/users/d$1;->a:Lcom/android/settings/users/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 106
    iget-object p1, p0, Lcom/android/settings/users/d$1;->a:Lcom/android/settings/users/d;

    .line 1204
    iget-object v0, p1, Lcom/android/settings/users/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1210
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "image/*"

    .line 1211
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    iget-object v4, p1, Lcom/android/settings/users/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1213
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v2, v1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_5

    .line 1151
    :cond_2
    iget-object v3, p1, Lcom/android/settings/users/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1152
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "no_set_user_icon"

    if-eqz v0, :cond_3

    const v0, 0x7f121834

    .line 1155
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1156
    new-instance v6, Lcom/android/settings/users/d$2;

    invoke-direct {v6, p1}, Lcom/android/settings/users/d$2;-><init>(Lcom/android/settings/users/d;)V

    .line 1162
    new-instance v7, Lcom/android/settings/users/d$a;

    invoke-direct {v7, v3, v0, v5, v6}, Lcom/android/settings/users/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    const v0, 0x7f121831

    .line 1167
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1168
    new-instance v2, Lcom/android/settings/users/d$3;

    invoke-direct {v2, p1}, Lcom/android/settings/users/d$3;-><init>(Lcom/android/settings/users/d;)V

    .line 1174
    new-instance v6, Lcom/android/settings/users/d$a;

    invoke-direct {v6, v3, v0, v5, v2}, Lcom/android/settings/users/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_4
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 1180
    iget-object v2, p1, Lcom/android/settings/users/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1181
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/4 v1, 0x2

    .line 1182
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1183
    new-instance v1, Lcom/android/settings/users/d$b;

    invoke-direct {v1, v3, v4}, Lcom/android/settings/users/d$b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1185
    iget-object v1, p1, Lcom/android/settings/users/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07075b

    .line 1186
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1185
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1187
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    const v1, 0x800003

    .line 1188
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 1190
    new-instance v1, Lcom/android/settings/users/d$4;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/users/d$4;-><init>(Lcom/android/settings/users/d;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1200
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    :cond_5
    return-void
.end method
