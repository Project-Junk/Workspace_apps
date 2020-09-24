.class public final Lcom/android/settings/fuelgauge/batterytip/c/e;
.super Lcom/android/settings/fuelgauge/batterytip/c/c;
.source "HighUsageTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final f:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c/e$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/c/e$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/c/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(IIZ)V

    .line 44
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/e;->g:J

    .line 45
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/c/e;->f:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(Landroid/os/Parcel;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/e;->g:J

    .line 52
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/e;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0807fc

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f12033e

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;)V
    .locals 4

    .line 84
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/e;->c:I

    const/16 v1, 0x544

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/c/e;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/c;

    const/16 v3, 0x54a

    .line 88
    iget-object v2, v2, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    invoke-virtual {p2, p1, v3, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/settings/fuelgauge/batterytip/c/c;)V
    .locals 0

    .line 79
    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/c;->c:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/e;->c:I

    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f12033d

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/settings/fuelgauge/batterytip/c/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " {"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/c/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/c/e;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/c;

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batterytip/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 57
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/c/c;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/e;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/c/e;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
