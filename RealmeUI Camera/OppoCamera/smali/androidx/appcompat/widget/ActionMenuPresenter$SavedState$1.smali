.class final Landroidx/appcompat/widget/ActionMenuPresenter$SavedState$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    .locals 1

    .line 619
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    .locals 0

    .line 624
    new-array p1, p1, [Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 616
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState$1;->a(Landroid/os/Parcel;)Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 616
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState$1;->a(I)[Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    move-result-object p1

    return-object p1
.end method
