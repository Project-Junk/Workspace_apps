.class final Lcom/color/support/preference/ColorInputPreference$b$1;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/preference/ColorInputPreference$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/color/support/preference/ColorInputPreference$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 2485
    new-instance v0, Lcom/color/support/preference/ColorInputPreference$b;

    invoke-direct {v0, p1}, Lcom/color/support/preference/ColorInputPreference$b;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1489
    new-array p1, p1, [Lcom/color/support/preference/ColorInputPreference$b;

    return-object p1
.end method
