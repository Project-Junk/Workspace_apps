.class final Lcom/color/support/widget/ColorLunarDatePicker$SavedState$1;
.super Ljava/lang/Object;
.source "ColorLunarDatePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorLunarDatePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/color/support/widget/ColorLunarDatePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/color/support/widget/ColorLunarDatePicker$SavedState;
    .locals 1

    .line 1103
    new-instance p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;-><init>(Landroid/os/Parcel;Lcom/color/support/widget/ColorLunarDatePicker$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1100
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLunarDatePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/color/support/widget/ColorLunarDatePicker$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/color/support/widget/ColorLunarDatePicker$SavedState;
    .locals 0

    .line 1107
    new-array p0, p1, [Lcom/color/support/widget/ColorLunarDatePicker$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1100
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLunarDatePicker$SavedState$1;->newArray(I)[Lcom/color/support/widget/ColorLunarDatePicker$SavedState;

    move-result-object p0

    return-object p0
.end method