.class Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;
.super Landroidx/preference/Preference$BaseSavedState;
.source "ListWithEntrySummaryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;
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
            "Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:[Ljava/lang/CharSequence;

.field private b:[Ljava/lang/CharSequence;

.field private c:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 172
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->a:[Ljava/lang/CharSequence;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->b:[Ljava/lang/CharSequence;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->c:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;)[Ljava/lang/CharSequence;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->a:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->a:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;)[Ljava/lang/CharSequence;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->b:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->b:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic c(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;)[Ljava/lang/CharSequence;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->c:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->c:[Ljava/lang/CharSequence;

    return-object p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    iget-object p2, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->a:[Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 182
    iget-object p2, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->b:[Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 183
    iget-object p2, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$a;->c:[Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    return-void
.end method
