.class final Landroidx/preference/EditTextPreference$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/EditTextPreference$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/preference/EditTextPreference$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/preference/EditTextPreference$b;
    .locals 0

    new-instance p0, Landroidx/preference/EditTextPreference$b;

    invoke-direct {p0, p1}, Landroidx/preference/EditTextPreference$b;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public a(I)[Landroidx/preference/EditTextPreference$b;
    .locals 0

    new-array p0, p1, [Landroidx/preference/EditTextPreference$b;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference$b$1;->a(Landroid/os/Parcel;)Landroidx/preference/EditTextPreference$b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference$b$1;->a(I)[Landroidx/preference/EditTextPreference$b;

    move-result-object p0

    return-object p0
.end method
