.class final Lcom/android/settings/SmsDefaultDialog$a;
.super Landroid/widget/BaseAdapter;
.source "SmsDefaultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmsDefaultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmsDefaultDialog$a$a;
    }
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Lcom/android/settings/SmsDefaultDialog;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/SmsDefaultDialog$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/SmsDefaultDialog;)V
    .locals 2

    .line 200
    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog$a;->b:Lcom/android/settings/SmsDefaultDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 201
    invoke-direct {p0}, Lcom/android/settings/SmsDefaultDialog$a;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog$a;->c:Ljava/util/List;

    .line 202
    invoke-direct {p0}, Lcom/android/settings/SmsDefaultDialog$a;->b()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog$a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SmsDefaultDialog$a$a;

    .line 206
    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog$a;->c:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p1, v0

    .line 209
    :cond_0
    iput p1, p0, Lcom/android/settings/SmsDefaultDialog$a;->a:I

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/SmsDefaultDialog$a$a;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$a;->b:Lcom/android/settings/SmsDefaultDialog;

    invoke-virtual {v0}, Lcom/android/settings/SmsDefaultDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog$a;->b:Lcom/android/settings/SmsDefaultDialog;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 275
    :try_start_0
    iget-object v3, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 276
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 278
    new-instance v5, Lcom/android/settings/SmsDefaultDialog$a$a;

    .line 279
    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 280
    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v5, p0, v6, v4, v3}, Lcom/android/settings/SmsDefaultDialog$a$a;-><init>(Lcom/android/settings/SmsDefaultDialog$a;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 278
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private b()I
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$a;->b:Lcom/android/settings/SmsDefaultDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 297
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog$a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SmsDefaultDialog$a$a;

    iget-object v2, v2, Lcom/android/settings/SmsDefaultDialog$a$a;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog$a;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SmsDefaultDialog$a$a;

    .line 230
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$a;->b:Lcom/android/settings/SmsDefaultDialog;

    invoke-virtual {v0}, Lcom/android/settings/SmsDefaultDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0046

    .line 231
    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x1020016

    .line 232
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 233
    iget-object v2, p2, Lcom/android/settings/SmsDefaultDialog$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget v0, p0, Lcom/android/settings/SmsDefaultDialog$a;->a:I

    const v2, 0x7f0a01d8

    if-ne p1, v0, :cond_0

    .line 235
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p1, 0x1020006

    .line 239
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 240
    iget-object p2, p2, Lcom/android/settings/SmsDefaultDialog$a$a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p3
.end method
