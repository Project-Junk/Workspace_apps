.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableIconWithRes"
.end annotation


# instance fields
.field private final mId:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 627
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 628
    iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;->mId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 633
    instance-of v0, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;

    iget p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;->mId:I

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;->mId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
