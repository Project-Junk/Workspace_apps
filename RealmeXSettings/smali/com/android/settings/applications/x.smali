.class public final Lcom/android/settings/applications/x;
.super Ljava/lang/Object;
.source "ProcStatsPackageEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/applications/x;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Z = false


# instance fields
.field final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/w;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field e:J

.field public f:D

.field g:J

.field h:J

.field i:J

.field public j:D

.field public k:Landroid/content/pm/ApplicationInfo;

.field public l:Ljava/lang/String;

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    new-instance v0, Lcom/android/settings/applications/x$1;

    invoke-direct {v0}, Lcom/android/settings/applications/x$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/x;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/x;->a:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/applications/w;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/x;->c:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/x;->d:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/x;->e:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/x;->f:D

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/x;->g:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/x;->h:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/x;->i:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/x;->j:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lcom/android/settings/applications/x;->a:Ljava/lang/String;

    .line 56
    iput-wide p2, p0, Lcom/android/settings/applications/x;->n:J

    return-void
.end method

.method public static a(FLandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    const v0, 0x7f120149

    .line 168
    new-array v3, v3, [Ljava/lang/Object;

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 169
    invoke-static {p0}, Lcom/android/settings/m;->a(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    .line 168
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const v0, 0x7f121507

    .line 171
    new-array v3, v3, [Ljava/lang/Object;

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 172
    invoke-static {p0}, Lcom/android/settings/m;->a(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    .line 171
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f1211ac

    .line 174
    new-array v3, v3, [Ljava/lang/Object;

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 175
    invoke-static {p0}, Lcom/android/settings/m;->a(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    .line 174
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lcom/android/settings/applications/x;->e:J

    iput-wide v0, p0, Lcom/android/settings/applications/x;->d:J

    iput-wide v0, p0, Lcom/android/settings/applications/x;->c:J

    const-wide/16 v2, 0x0

    .line 88
    iput-wide v2, p0, Lcom/android/settings/applications/x;->f:D

    .line 89
    iput-wide v0, p0, Lcom/android/settings/applications/x;->i:J

    iput-wide v0, p0, Lcom/android/settings/applications/x;->h:J

    iput-wide v0, p0, Lcom/android/settings/applications/x;->g:J

    .line 90
    iput-wide v2, p0, Lcom/android/settings/applications/x;->j:D

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/w;

    .line 94
    iget-wide v3, v2, Lcom/android/settings/applications/w;->f:J

    iget-wide v5, p0, Lcom/android/settings/applications/x;->c:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/applications/x;->c:J

    .line 95
    iget-wide v3, p0, Lcom/android/settings/applications/x;->d:J

    iget-wide v5, v2, Lcom/android/settings/applications/w;->g:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/x;->d:J

    .line 96
    iget-wide v3, p0, Lcom/android/settings/applications/x;->f:D

    iget-wide v5, v2, Lcom/android/settings/applications/w;->i:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/x;->f:D

    .line 97
    iget-wide v3, v2, Lcom/android/settings/applications/w;->j:J

    iget-wide v5, p0, Lcom/android/settings/applications/x;->g:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/applications/x;->g:J

    .line 98
    iget-wide v3, p0, Lcom/android/settings/applications/x;->h:J

    iget-wide v5, v2, Lcom/android/settings/applications/w;->k:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/x;->h:J

    .line 99
    iget-wide v3, p0, Lcom/android/settings/applications/x;->j:D

    iget-wide v5, v2, Lcom/android/settings/applications/w;->m:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/x;->j:D

    .line 105
    iget-wide v3, p0, Lcom/android/settings/applications/x;->e:J

    iget-wide v5, v2, Lcom/android/settings/applications/w;->h:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/x;->e:J

    .line 106
    iget-wide v3, p0, Lcom/android/settings/applications/x;->i:J

    iget-wide v5, v2, Lcom/android/settings/applications/w;->l:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/x;->i:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-wide v1, p0, Lcom/android/settings/applications/x;->d:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/applications/x;->d:J

    .line 109
    iget-wide v0, p0, Lcom/android/settings/applications/x;->h:J

    div-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/settings/applications/x;->h:J

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 2

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    .line 114
    iget-object v0, p0, Lcom/android/settings/applications/x;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/x;->l:Ljava/lang/String;

    :try_start_0
    const-string v1, "os"

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x408200

    if-eqz v0, :cond_0

    const-string v0, "android"

    .line 118
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    const p2, 0x7f121125

    .line 122
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/x;->l:Ljava/lang/String;

    return-void

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/x;->a:Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    .line 128
    iget-object p1, p0, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/x;->l:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 131
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "could not find package: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/applications/x;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProcStatsEntry"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/android/settings/applications/w;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 142
    iget-object p2, p0, Lcom/android/settings/applications/x;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 144
    iget-wide v0, p0, Lcom/android/settings/applications/x;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget-wide v0, p0, Lcom/android/settings/applications/x;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-wide v0, p0, Lcom/android/settings/applications/x;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-wide v0, p0, Lcom/android/settings/applications/x;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 148
    iget-wide v0, p0, Lcom/android/settings/applications/x;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-wide v0, p0, Lcom/android/settings/applications/x;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-wide v0, p0, Lcom/android/settings/applications/x;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-wide v0, p0, Lcom/android/settings/applications/x;->j:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
