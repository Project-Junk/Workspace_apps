.class public Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
.super Ljava/lang/Object;
.source "ColorAnimationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# static fields
.field private static final DUARTION_42_MS:I = 0x2a

.field public static final DURATION_16_MS:I = 0x10

.field public static final DURATION_32_MS:I = 0x20

.field public static final DURATION_48_MS:I = 0x30

.field public static final DURATION_64_MS:I = 0x40

.field public static final FRAME_RATE_HIGH:I = 0x2

.field public static final FRAME_RATE_HIGH_X:I = 0x3

.field public static final FRAME_RATE_LOW:I = 0x0

.field public static final FRAME_RATE_MEDIUM:I = 0x1

.field public static final FRAME_RATE_REALME_ANIM:I = 0x4


# instance fields
.field private mAlpha:I

.field private mDuration:I

.field private mFrames:I

.field private mIsReverse:Z

.field private mName:Ljava/lang/String;

.field private mOneshot:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x1

    .line 125
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 138
    invoke-direct/range {v0 .. v5}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 114
    iput v0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mAlpha:I

    .line 152
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mName:Ljava/lang/String;

    .line 153
    iput p2, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mFrames:I

    .line 154
    invoke-direct {p0, p3}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->getDurationByRate(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mDuration:I

    .line 155
    iput-boolean p4, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mOneshot:Z

    .line 156
    iput-boolean p5, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mIsReverse:Z

    return-void
.end method

.method private getDurationByRate(I)I
    .locals 1

    const/16 p0, 0x20

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x2a

    goto :goto_0

    :cond_1
    const/16 p0, 0x10

    goto :goto_0

    :cond_2
    const/16 p0, 0x30

    goto :goto_0

    :cond_3
    const/16 p0, 0x40

    :cond_4
    :goto_0
    return p0
.end method


# virtual methods
.method public getAlpha()I
    .locals 0

    .line 205
    iget p0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mAlpha:I

    return p0
.end method

.method public getDuration()I
    .locals 0

    .line 193
    iget p0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mDuration:I

    return p0
.end method

.method public getFrames()I
    .locals 0

    .line 189
    iget p0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mFrames:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public isOneshot()Z
    .locals 0

    .line 197
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mOneshot:Z

    return p0
.end method

.method public isReverse()Z
    .locals 0

    .line 201
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mIsReverse:Z

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->mAlpha:I

    return-void
.end method
