.class public Lcom/oppo/camera/sticker/ui/j;
.super Landroidx/viewpager/widget/a;
.source "StickerPageAdapter.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Landroid/app/Activity;

.field private e:Lcom/oppo/camera/sticker/ui/i;

.field private f:Lcom/oppo/camera/sticker/ui/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/oppo/camera/sticker/data/StickerItem;Lcom/oppo/camera/sticker/ui/i;Lcom/oppo/camera/sticker/ui/c;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/oppo/camera/sticker/ui/j;->b:I

    .line 23
    iput v1, p0, Lcom/oppo/camera/sticker/ui/j;->c:I

    .line 24
    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->d:Landroid/app/Activity;

    .line 25
    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->e:Lcom/oppo/camera/sticker/ui/i;

    .line 26
    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->f:Lcom/oppo/camera/sticker/ui/c;

    .line 30
    iput p2, p0, Lcom/oppo/camera/sticker/ui/j;->b:I

    .line 31
    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/j;->d:Landroid/app/Activity;

    .line 32
    iput-object p4, p0, Lcom/oppo/camera/sticker/ui/j;->e:Lcom/oppo/camera/sticker/ui/i;

    .line 33
    iput-object p5, p0, Lcom/oppo/camera/sticker/ui/j;->f:Lcom/oppo/camera/sticker/ui/c;

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p3, p1}, Lcom/oppo/camera/sticker/ui/j;->a(Lcom/oppo/camera/sticker/data/StickerItem;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/h;->a()Lcom/oppo/camera/ui/preview/a/h$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/h$c;->e(Ljava/lang/String;)I

    move-result p1

    .line 203
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/j;->e:Lcom/oppo/camera/sticker/ui/i;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;->setStickerMenuListener(Lcom/oppo/camera/sticker/ui/i;)V

    .line 103
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/j;->f:Lcom/oppo/camera/sticker/ui/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;->setImageDownloader(Lcom/oppo/camera/sticker/ui/c;)V

    :cond_1
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 111
    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/data/StickerItem;Z)V
    .locals 10

    const-string v0, "makeGridView"

    .line 143
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/j;->d:Landroid/app/Activity;

    .line 146
    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/a/h;->a()Lcom/oppo/camera/ui/preview/a/h$c;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/a/h$c;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 149
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 150
    iget-object v3, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    .line 154
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/ui/preview/a/h$a;

    .line 155
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/a/h$a;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/camera/sticker/data/StickerItem;

    .line 158
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 159
    invoke-virtual {v6}, Lcom/oppo/camera/sticker/data/StickerItem;->getDownloadState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "state_icon"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "sticker_item"

    .line 160
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/a/h$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oppo/camera/sticker/ui/j;->b(Ljava/lang/String;)Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 167
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 170
    iget-object v8, p0, Lcom/oppo/camera/sticker/ui/j;->d:Landroid/app/Activity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0b00a8

    .line 171
    invoke-virtual {v8, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;

    .line 172
    invoke-virtual {v8, v5}, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/a/h$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/oppo/camera/ui/preview/a/h$c;->e(Ljava/lang/String;)I

    move-result v5

    .line 176
    iget-object v9, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    if-eq v7, v5, :cond_2

    .line 177
    iget-object v7, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 179
    :cond_2
    iget-object v5, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v5, v8

    :cond_3
    if-eqz p1, :cond_4

    .line 183
    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v6

    .line 184
    :cond_4
    iget v7, p0, Lcom/oppo/camera/sticker/ui/j;->b:I

    .line 185
    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/a/h$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 184
    invoke-virtual {v5, v4, v7, v3}, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;->a(Ljava/util/List;IZ)V

    goto/16 :goto_0

    :cond_5
    if-eqz p2, :cond_6

    .line 189
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/j;->c()V

    .line 193
    :cond_6
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0, p1}, Lcom/oppo/camera/sticker/ui/j;->b(Ljava/lang/String;)Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;ZLcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 9

    .line 65
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/oppo/camera/sticker/ui/j;->b(Ljava/lang/String;)Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;

    move-result-object v3

    .line 68
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/j;->d:Landroid/app/Activity;

    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    .line 69
    new-instance v0, Lcom/oppo/camera/sticker/ui/j$1;

    move-object v1, v0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/oppo/camera/sticker/ui/j$1;-><init>(Lcom/oppo/camera/sticker/ui/j;Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;IILandroid/graphics/drawable/Drawable;ZLcom/oppo/camera/sticker/data/StickerItem;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/oppo/camera/sticker/ui/j;->b(Ljava/lang/String;)Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;->a()V

    :cond_0
    if-eqz p2, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/j;->c()V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;

    .line 58
    invoke-virtual {v1, p1}, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;->setGridViewEnable(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/oppo/camera/sticker/ui/j;->c:I

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 46
    iput p1, p0, Lcom/oppo/camera/sticker/ui/j;->b:I

    .line 48
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/j;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;

    .line 50
    iget v1, p0, Lcom/oppo/camera/sticker/ui/j;->b:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/ui/StickerGridViewLayout;->setOrientation(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/oppo/camera/sticker/ui/j;->c:I

    return v0
.end method
