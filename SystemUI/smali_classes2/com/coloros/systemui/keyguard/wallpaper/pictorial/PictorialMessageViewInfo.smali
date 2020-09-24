.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;
.super Ljava/lang/Object;
.source "PictorialMessageViewInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo$SkipStrategy;
    }
.end annotation


# instance fields
.field private mEntryDrawable:Landroid/graphics/drawable/Drawable;

.field private mEntryDrawableRes:I

.field private mEntryShow:Z

.field private mFirstAnimationShow:Z

.field private mMessageViewShow:Z

.field private mPromptAnimationShow:Z

.field private mRedDotShow:Z

.field private mRedPointMarginLeft:I

.field private mRedPointMarginTop:I

.field private mRedPointR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isMessageViewShow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setMessageViewShow(Z)V

    .line 39
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isEntryShow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setEntryShow(Z)V

    .line 40
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isRedDotShow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setRedDotShow(Z)V

    .line 41
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isPromptAnimationShow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setPromptAnimationShow(Z)V

    .line 42
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isFirstAnimationShow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setFirstAnimationShow(Z)V

    .line 43
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getEntryDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setEntryDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointMarginLeft()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setRedPointMarginLeft(I)V

    .line 45
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointMarginTop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setRedPointMarginTop(I)V

    .line 46
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getRedPointR()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setRedPointR(I)V

    .line 47
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getEntryDrawableRes()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setEntryDrawableRes(I)V

    return-void
.end method


# virtual methods
.method public getEntryDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mEntryDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getEntryDrawableRes()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mEntryDrawableRes:I

    return p0
.end method

.method public getRedPointMarginLeft()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mRedPointMarginLeft:I

    return p0
.end method

.method public getRedPointMarginTop()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mRedPointMarginTop:I

    return p0
.end method

.method public getRedPointR()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mRedPointR:I

    return p0
.end method

.method public isEntryShow()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mEntryShow:Z

    return p0
.end method

.method public isFirstAnimationShow()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mFirstAnimationShow:Z

    return p0
.end method

.method public isMessageViewShow()Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mMessageViewShow:Z

    return p0
.end method

.method public isPromptAnimationShow()Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mPromptAnimationShow:Z

    return p0
.end method

.method public isRedDotShow()Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mRedDotShow:Z

    return p0
.end method

.method public setEntryDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mEntryDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setEntryDrawableRes(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mEntryDrawableRes:I

    return-void
.end method

.method public setEntryShow(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mEntryShow:Z

    return-void
.end method

.method public setFirstAnimationShow(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mFirstAnimationShow:Z

    return-void
.end method

.method public setMessageViewShow(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mMessageViewShow:Z

    return-void
.end method

.method public setPromptAnimationShow(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mPromptAnimationShow:Z

    return-void
.end method

.method public setRedDotShow(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mRedDotShow:Z

    return-void
.end method

.method public setRedPointMarginLeft(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mRedPointMarginLeft:I

    return-void
.end method

.method public setRedPointMarginTop(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mRedPointMarginTop:I

    return-void
.end method

.method public setRedPointR(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mRedPointR:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PictorialMessageViewInfo { mMessageViewShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mMessageViewShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRedDotShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mRedDotShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEntryShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mEntryShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFirstAnimationShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mFirstAnimationShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPromptAnimationShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mPromptAnimationShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEntryDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mEntryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEntryDrawableRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mEntryDrawableRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRedPointMarginLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mRedPointMarginLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRedPointMarginTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->mRedPointMarginTop:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
