.class public Landroidx/widget/ColorDrawerLayout$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "ColorDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/widget/ColorDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/widget/ColorDrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lockModeBottom:I

.field lockModeEnd:I

.field lockModeLeft:I

.field lockModeRight:I

.field lockModeStart:I

.field onScreen:F

.field openDrawerGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2352
    new-instance v0, Landroidx/widget/ColorDrawerLayout$SavedState$1;

    invoke-direct {v0}, Landroidx/widget/ColorDrawerLayout$SavedState$1;-><init>()V

    sput-object v0, Landroidx/widget/ColorDrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2326
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    const/4 p2, 0x0

    .line 2312
    iput p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->openDrawerGravity:I

    .line 2327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->openDrawerGravity:I

    .line 2328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->lockModeLeft:I

    .line 2329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->lockModeRight:I

    .line 2330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->lockModeStart:I

    .line 2331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->lockModeEnd:I

    .line 2332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->lockModeBottom:I

    .line 2333
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->onScreen:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2337
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 2312
    iput p1, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->openDrawerGravity:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2342
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2343
    iget p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2344
    iget p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2345
    iget p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->lockModeRight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2346
    iget p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->lockModeStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2347
    iget p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->lockModeEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2348
    iget p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->lockModeBottom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2349
    iget p2, p0, Landroidx/widget/ColorDrawerLayout$SavedState;->onScreen:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
