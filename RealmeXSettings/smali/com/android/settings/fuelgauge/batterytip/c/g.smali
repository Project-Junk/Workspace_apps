.class public final Lcom/android/settings/fuelgauge/batterytip/c/g;
.super Lcom/android/settings/fuelgauge/batterytip/c/c;
.source "RestrictAppTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c/g$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/c/g$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/c/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 42
    :goto_0
    invoke-direct {p0, v1, p1, v2}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(IIZ)V

    .line 43
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    .line 44
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->e:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(Landroid/os/Parcel;)V

    .line 57
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fuelgauge/batterytip/c;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 48
    invoke-direct {p0, v1, v0, v1}, Lcom/android/settings/fuelgauge/batterytip/c/c;-><init>(IIZ)V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    .line 50
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 86
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0807fb

    return v0

    :cond_0
    const v0, 0x7f0806af

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/c;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    .line 63
    invoke-static {p1, v2}, Lcom/android/settings/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 67
    iget v3, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const v3, 0x7f10000d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    .line 68
    invoke-virtual {p1, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const v2, 0x7f10000f

    new-array v3, v4, [Ljava/lang/Object;

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;)V
    .locals 10

    .line 122
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->c:I

    const/16 v1, 0x543

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    .line 124
    iget p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->c:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 125
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batterytip/c;

    .line 127
    iget-object v2, v1, Lcom/android/settings/fuelgauge/batterytip/c;->b:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v6, 0x549

    const/4 v7, 0x0

    .line 128
    iget-object v8, v1, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    .line 132
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v4, p2

    .line 128
    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/settings/fuelgauge/batterytip/c/c;)V
    .locals 4

    .line 93
    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/c/c;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 95
    iput v2, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->c:I

    .line 96
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c/g;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    .line 97
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->d:Z

    return-void

    .line 98
    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->c:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/c/c;->c:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 100
    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->c:I

    .line 101
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->d:Z

    return-void

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/c/c;->f()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->c:I

    .line 104
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/c/c;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->d:Z

    .line 105
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c/g;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    .line 77
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/c;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    .line 76
    invoke-static {p1, v2}, Lcom/android/settings/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 78
    :goto_0
    iget v3, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const v3, 0x7f10000c

    goto :goto_1

    :cond_1
    const v3, 0x7f10000e

    .line 81
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-virtual {p1, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/c/c;->c(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/c/a;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/c/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 115
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 116
    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->c:I

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/settings/fuelgauge/batterytip/c/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " {"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 160
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/c;

    .line 161
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

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 170
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/c/c;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
