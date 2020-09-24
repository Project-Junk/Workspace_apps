.class Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;
.super Landroidx/preference/Preference$BaseSavedState;
.source "ColorPointerSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 156
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;->a:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 163
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    iget p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
