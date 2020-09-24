.class public final Lcom/android/settings/fuelgauge/batterytip/c;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterytip/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/fuelgauge/batterytip/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/c$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c;->b:Landroid/util/ArraySet;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/c;->c:J

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/fuelgauge/batterytip/c$a;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    iget-object v0, p1, Lcom/android/settings/fuelgauge/batterytip/c$a;->b:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    .line 2106
    iget-object v0, p1, Lcom/android/settings/fuelgauge/batterytip/c$a;->a:Landroid/util/ArraySet;

    .line 43
    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c;->b:Landroid/util/ArraySet;

    .line 3106
    iget-wide v0, p1, Lcom/android/settings/fuelgauge/batterytip/c$a;->c:J

    .line 44
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/c;->c:J

    .line 4106
    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/c$a;->d:I

    .line 45
    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/batterytip/c$a;B)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/c;-><init>(Lcom/android/settings/fuelgauge/batterytip/c$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 31
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c;

    .line 5058
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/c;->c:J

    iget-wide v2, p1, Lcom/android/settings/fuelgauge/batterytip/c;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 85
    :cond_0
    instance-of v1, p1, Lcom/android/settings/fuelgauge/batterytip/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 89
    :cond_1
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c;

    .line 90
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/c;->b:Landroid/util/ArraySet;

    iget-object v3, p1, Lcom/android/settings/fuelgauge/batterytip/c;->b:Landroid/util/ArraySet;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    iget v3, p1, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/batterytip/c;->c:J

    iget-wide v5, p1, Lcom/android/settings/fuelgauge/batterytip/c;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    .line 93
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",anomalyTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/c;->b:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",screenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batterytip/c;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 68
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/c;->b:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 70
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/c;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget p2, p0, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
