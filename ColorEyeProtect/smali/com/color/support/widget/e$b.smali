.class Lcom/color/support/widget/e$b;
.super Landroid/view/View$BaseSavedState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/color/support/widget/e$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/color/support/widget/e$b$1;

    invoke-direct {v0}, Lcom/color/support/widget/e$b$1;-><init>()V

    sput-object v0, Lcom/color/support/widget/e$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/e$b;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/e$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/color/support/widget/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/support/widget/e$b;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lcom/color/support/widget/e$b;->a:I

    iput p3, p0, Lcom/color/support/widget/e$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/color/support/widget/e$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/e$b;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/e$b;->a:I

    return p0
.end method

.method b()I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/e$b;->b:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/color/support/widget/e$b;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/color/support/widget/e$b;->b:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
