.class Lcom/android/internal/telephony/cat/SelectItemParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mLoadTitleIcon:Z

.field mMenu:Lcom/android/internal/telephony/cat/Menu;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 175
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    const/4 p1, 0x0

    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mLoadTitleIcon:Z

    .line 176
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 177
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mLoadTitleIcon:Z

    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 3

    if-eqz p1, :cond_3

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_3

    .line 183
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mLoadTitleIcon:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 187
    iget-object v2, v1, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 190
    iput-object p1, v1, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
