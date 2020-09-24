.class public Lcom/oppo/camera/ui/menu/a;
.super Ljava/lang/Object;
.source "CameraMenuOptionInfo.java"


# static fields
.field public static final GROUP_TYPE_IMAGE_MENU:I = 0x3

.field public static final GROUP_TYPE_MENU_EXPANDABLE:I = 0x2

.field public static final GROUP_TYPE_NOMAL:I = 0x0

.field public static final GROUP_TYPE_SHARE_RESOURCE:I = 0x1


# instance fields
.field private mGroupType:I

.field private mImageTitleColorChangeable:Z

.field private mImageTitleMode:Z

.field private mOptionDefaultValue:Ljava/lang/String;

.field private mOptionExpandIcon:Landroid/graphics/Bitmap;

.field private mOptionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/menu/d;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionKey:Ljava/lang/String;

.field private mOptionSingleIcon:Landroid/graphics/Bitmap;

.field private mOptionTitle:Ljava/lang/String;

.field private mbOptionOnOff:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionKey:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionTitle:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionDefaultValue:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/a;->mbOptionOnOff:Z

    .line 29
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    .line 30
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionExpandIcon:Landroid/graphics/Bitmap;

    .line 31
    iput v1, p0, Lcom/oppo/camera/ui/menu/a;->mGroupType:I

    .line 32
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/a;->mImageTitleMode:Z

    .line 33
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/a;->mImageTitleColorChangeable:Z

    .line 36
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionKey:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionTitle:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionDefaultValue:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    .line 40
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/a;->mbOptionOnOff:Z

    return-void
.end method


# virtual methods
.method public getGroupType()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/oppo/camera/ui/menu/a;->mGroupType:I

    return v0
.end method

.method public getImageTitleColorChangeable()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/a;->mImageTitleColorChangeable:Z

    return v0
.end method

.method public getImageTitleMode()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/a;->mImageTitleMode:Z

    return v0
.end method

.method public getOptionDefaultValue()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionExpandIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionExpandIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOptionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/menu/d;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOptionKey()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionOnOff()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/a;->mbOptionOnOff:Z

    return v0
.end method

.method public getOptionSingleIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOptionTitle()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public release()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/d;

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/d;->f()V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    .line 141
    :cond_3
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionDefaultValue:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionKey:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionTitle:Ljava/lang/String;

    return-void
.end method

.method public setGroupType(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/oppo/camera/ui/menu/a;->mGroupType:I

    return-void
.end method

.method public setImageTitleColorChangeable(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/a;->mImageTitleColorChangeable:Z

    return-void
.end method

.method public setImageTitleMode(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/a;->mImageTitleMode:Z

    return-void
.end method

.method public setOptionDefaultValue(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public setOptionExpandIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionExpandIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOptionItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/menu/d;",
            ">;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    return-void
.end method

.method public setOptionKey(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionKey:Ljava/lang/String;

    return-void
.end method

.method public setOptionOnOff(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/a;->mbOptionOnOff:Z

    return-void
.end method

.method public setOptionSingleIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOptionTitle(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionTitle:Ljava/lang/String;

    return-void
.end method
