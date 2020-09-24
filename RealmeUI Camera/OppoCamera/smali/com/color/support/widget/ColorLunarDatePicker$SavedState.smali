.class Lcom/color/support/widget/ColorLunarDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ColorLunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorLunarDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/color/support/widget/ColorLunarDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 999
    new-instance v0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/color/support/widget/ColorLunarDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1021
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1022
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->mYear:I

    .line 1023
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->mMonth:I

    .line 1024
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->mDay:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/color/support/widget/ColorLunarDatePicker$1;)V
    .locals 0

    .line 995
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0

    .line 1014
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1015
    iput p2, p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->mYear:I

    .line 1016
    iput p3, p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->mMonth:I

    .line 1017
    iput p4, p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->mDay:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/color/support/widget/ColorLunarDatePicker$1;)V
    .locals 0

    .line 995
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/color/support/widget/ColorLunarDatePicker$SavedState;)I
    .locals 0

    .line 995
    iget p0, p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->mYear:I

    return p0
.end method

.method static synthetic access$1200(Lcom/color/support/widget/ColorLunarDatePicker$SavedState;)I
    .locals 0

    .line 995
    iget p0, p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->mMonth:I

    return p0
.end method

.method static synthetic access$1300(Lcom/color/support/widget/ColorLunarDatePicker$SavedState;)I
    .locals 0

    .line 995
    iget p0, p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->mDay:I

    return p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1029
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1030
    iget p2, p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    iget p2, p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    iget p2, p0, Lcom/color/support/widget/ColorLunarDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
