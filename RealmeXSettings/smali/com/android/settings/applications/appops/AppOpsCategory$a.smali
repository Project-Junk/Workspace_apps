.class public final Lcom/android/settings/applications/appops/AppOpsCategory$a;
.super Landroid/widget/BaseAdapter;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/res/Resources;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Lcom/android/settings/applications/appops/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appops/a;)V
    .locals 1

    .line 251
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$a;->b:Landroid/content/res/Resources;

    const-string v0, "layout_inflater"

    .line 253
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$a;->c:Landroid/view/LayoutInflater;

    .line 254
    iput-object p2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$a;->d:Lcom/android/settings/applications/appops/a;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/settings/applications/appops/a$b;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appops/a$b;

    return-object p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/a$b;",
            ">;)V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$a;->a:Ljava/util/List;

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$a;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$a;->a(I)Lcom/android/settings/applications/appops/a$b;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 285
    iget-object p2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$a;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0044

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 290
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$a;->a(I)Lcom/android/settings/applications/appops/a$b;

    move-result-object p1

    const p3, 0x7f0a009d

    .line 291
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 1353
    iget-object v1, p1, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    .line 2262
    iget-object v2, v1, Lcom/android/settings/applications/appops/a$a;->f:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 2263
    iget-object v2, v1, Lcom/android/settings/applications/appops/a$a;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2264
    iget-object v2, v1, Lcom/android/settings/applications/appops/a$a;->b:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v1, Lcom/android/settings/applications/appops/a$a;->a:Lcom/android/settings/applications/appops/a;

    iget-object v4, v4, Lcom/android/settings/applications/appops/a;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/applications/appops/a$a;->f:Landroid/graphics/drawable/Drawable;

    .line 2265
    iget-object v1, v1, Lcom/android/settings/applications/appops/a$a;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 2267
    :cond_1
    iput-boolean v0, v1, Lcom/android/settings/applications/appops/a$a;->g:Z

    goto :goto_0

    .line 2269
    :cond_2
    iget-boolean v2, v1, Lcom/android/settings/applications/appops/a$a;->g:Z

    if-nez v2, :cond_4

    .line 2272
    iget-object v2, v1, Lcom/android/settings/applications/appops/a$a;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2273
    iput-boolean v3, v1, Lcom/android/settings/applications/appops/a$a;->g:Z

    .line 2274
    iget-object v2, v1, Lcom/android/settings/applications/appops/a$a;->b:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v1, Lcom/android/settings/applications/appops/a$a;->a:Lcom/android/settings/applications/appops/a;

    iget-object v4, v4, Lcom/android/settings/applications/appops/a;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/applications/appops/a$a;->f:Landroid/graphics/drawable/Drawable;

    .line 2275
    iget-object v1, v1, Lcom/android/settings/applications/appops/a$a;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 2281
    :cond_3
    :goto_0
    iget-object v1, v1, Lcom/android/settings/applications/appops/a$a;->a:Lcom/android/settings/applications/appops/a;

    iget-object v1, v1, Lcom/android/settings/applications/appops/a;->a:Landroid/content/Context;

    const v2, 0x1080093

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 2278
    :cond_4
    iget-object v1, v1, Lcom/android/settings/applications/appops/a$a;->f:Landroid/graphics/drawable/Drawable;

    .line 291
    :goto_1
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0a009f

    .line 293
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 2353
    iget-object v1, p1, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    .line 3258
    iget-object v1, v1, Lcom/android/settings/applications/appops/a$a;->e:Ljava/lang/String;

    .line 293
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0480

    .line 294
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$a;->b:Landroid/content/res/Resources;

    .line 3409
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/a$b;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f1201e8

    .line 3410
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    .line 3412
    :cond_5
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/a$b;->b()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_6

    .line 3413
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/a$b;->b()J

    move-result-wide v4

    .line 3414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    const/high16 v10, 0x40000

    .line 3413
    invoke-static/range {v4 .. v10}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :cond_6
    const-string v1, ""

    .line 294
    :goto_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0482

    .line 296
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f0a0481

    .line 297
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CompoundButton;

    .line 4373
    iget v1, p1, Lcom/android/settings/applications/appops/a$b;->d:I

    if-ltz v1, :cond_7

    iget p1, p1, Lcom/android/settings/applications/appops/a$b;->d:I

    goto :goto_3

    :cond_7
    iget-object p1, p1, Lcom/android/settings/applications/appops/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result p1

    :goto_3
    if-nez p1, :cond_8

    move v0, v3

    .line 297
    :cond_8
    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-object p2
.end method
