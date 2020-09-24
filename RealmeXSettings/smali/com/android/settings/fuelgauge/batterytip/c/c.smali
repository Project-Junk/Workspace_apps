.class public abstract Lcom/android/settings/fuelgauge/batterytip/c/c;
.super Ljava/lang/Object;
.source "BatteryTip.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/fuelgauge/batterytip/c/c;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field protected b:I

.field protected c:I

.field protected d:Z

.field protected e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 76
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 77
    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/c/c;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 78
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/c/c;->a:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 79
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/c/c;->a:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 80
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/c/c;->a:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 81
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/c/c;->a:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 82
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/c/c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 83
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/c/c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 84
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/c/c;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->b:I

    .line 106
    iput p2, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->c:I

    .line 107
    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->d:Z

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->e:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->b:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->c:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->d:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->e:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract a(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;)V
.end method

.method public final a(Landroidx/preference/Preference;)V
    .locals 3

    .line 152
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/c/c;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/c/c;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/c/c;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/c/c;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 158
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method public abstract a(Lcom/android/settings/fuelgauge/batterytip/c/c;)V
.end method

.method public b()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public abstract b(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public c(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->d:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 42
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c/c;

    .line 1194
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/c/c;->a:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    sget-object v1, Lcom/android/settings/fuelgauge/batterytip/c/c;->a:Landroid/util/SparseIntArray;

    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/c;->b:I

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->e:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->b:I

    return v0
.end method

.method public final f()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 118
    iget p2, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget p2, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-boolean p2, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    iget-boolean p2, p0, Lcom/android/settings/fuelgauge/batterytip/c/c;->e:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
