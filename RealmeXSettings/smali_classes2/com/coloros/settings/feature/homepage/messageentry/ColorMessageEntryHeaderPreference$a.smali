.class Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;
.super Landroidx/preference/Preference$BaseSavedState;
.source "ColorMessageEntryHeaderPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference;
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
            "Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    iget p2, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryHeaderPreference$a;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
