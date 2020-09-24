.class public final Lcom/google/android/setupcompat/a/a;
.super Ljava/lang/Object;
.source "CustomEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x2710
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/setupcompat/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/setupcompat/a/b;

.field private final c:Landroid/os/PersistableBundle;

.field private final d:Landroid/os/PersistableBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Lcom/google/android/setupcompat/a/a$1;

    invoke-direct {v0}, Lcom/google/android/setupcompat/a/a$1;-><init>()V

    sput-object v0, Lcom/google/android/setupcompat/a/a;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x5

    .line 178
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Double;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/setupcompat/a/a;->e:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(JLcom/google/android/setupcompat/a/b;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V
    .locals 3

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Timestamp cannot be negative."

    .line 134
    invoke-static {v0, v2}, Lcom/google/android/setupcompat/internal/g;->a(ZLjava/lang/String;)V

    const-string v0, "MetricKey cannot be null."

    .line 135
    invoke-static {p3, v0}, Lcom/google/android/setupcompat/internal/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Bundle cannot be null."

    .line 136
    invoke-static {p4, v0}, Lcom/google/android/setupcompat/internal/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p4}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v1, "Bundle cannot be empty."

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/g;->a(ZLjava/lang/String;)V

    const-string v0, "piiValues cannot be null."

    .line 138
    invoke-static {p5, v0}, Lcom/google/android/setupcompat/internal/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    invoke-static {p4}, Lcom/google/android/setupcompat/a/a;->a(Landroid/os/PersistableBundle;)V

    .line 140
    iput-wide p1, p0, Lcom/google/android/setupcompat/a/a;->a:J

    .line 141
    iput-object p3, p0, Lcom/google/android/setupcompat/a/a;->b:Lcom/google/android/setupcompat/a/b;

    .line 142
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1, p4}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/a/a;->c:Landroid/os/PersistableBundle;

    .line 143
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1, p5}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/a/a;->d:Landroid/os/PersistableBundle;

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/setupcompat/a/b;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;B)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/google/android/setupcompat/a/a;-><init>(JLcom/google/android/setupcompat/a/b;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static a(Lcom/google/android/setupcompat/a/b;Landroid/os/PersistableBundle;)Lcom/google/android/setupcompat/a/a;
    .locals 8

    .line 52
    invoke-static {}, Lcom/google/android/setupcompat/internal/a;->a()Z

    move-result v0

    const-string v1, "The constructor only support on sdk Q or higher."

    .line 51
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/g;->a(ZLjava/lang/String;)V

    .line 53
    sget-object v7, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 1045
    invoke-static {}, Lcom/google/android/setupcompat/internal/a;->a()Z

    move-result v0

    const-string v1, "The constructor only support on sdk Q or higher"

    .line 1044
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/g;->a(ZLjava/lang/String;)V

    .line 1046
    new-instance v0, Lcom/google/android/setupcompat/a/a;

    invoke-static {}, Lcom/google/android/setupcompat/internal/b;->b()J

    move-result-wide v3

    move-object v2, v0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/setupcompat/a/a;-><init>(JLcom/google/android/setupcompat/a/b;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method private static a(Landroid/os/PersistableBundle;)V
    .locals 11

    .line 152
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x3

    const/16 v3, 0x32

    const-string v4, "bundle key"

    .line 153
    invoke-static {v1, v4, v2, v3}, Lcom/google/android/setupcompat/internal/k;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 154
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 156
    sget-object v5, Lcom/google/android/setupcompat/a/a;->e:[Ljava/lang/Class;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    const/4 v9, 0x1

    if-ge v8, v6, :cond_2

    aget-object v10, v5, v8

    .line 157
    invoke-virtual {v10, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v5, v9

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v5, v7

    .line 162
    :goto_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v7

    sget-object v6, Lcom/google/android/setupcompat/a/a;->e:[Ljava/lang/Class;

    aput-object v6, v2, v9

    const/4 v6, 0x2

    aput-object v4, v2, v6

    const-string v8, "Invalid data type for key=\'%s\'. Expected values of type %s, but found [%s]."

    .line 164
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v5, v2}, Lcom/google/android/setupcompat/internal/g;->a(ZLjava/lang/String;)V

    .line 168
    instance-of v2, v4, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 169
    check-cast v4, Ljava/lang/String;

    .line 170
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_3

    move v2, v9

    goto :goto_3

    :cond_3
    move v2, v7

    :goto_3
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    const-string v1, "Maximum length of string value for key=\'%s\' cannot exceed %s."

    .line 171
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v2, v1}, Lcom/google/android/setupcompat/internal/g;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
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

    .line 114
    :cond_0
    instance-of v1, p1, Lcom/google/android/setupcompat/a/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 117
    :cond_1
    check-cast p1, Lcom/google/android/setupcompat/a/a;

    .line 118
    iget-wide v3, p0, Lcom/google/android/setupcompat/a/a;->a:J

    iget-wide v5, p1, Lcom/google/android/setupcompat/a/a;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/setupcompat/a/a;->b:Lcom/google/android/setupcompat/a/b;

    iget-object v3, p1, Lcom/google/android/setupcompat/a/a;->b:Lcom/google/android/setupcompat/a/b;

    .line 119
    invoke-static {v1, v3}, Lcom/google/android/setupcompat/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/setupcompat/a/a;->c:Landroid/os/PersistableBundle;

    iget-object v3, p1, Lcom/google/android/setupcompat/a/a;->c:Landroid/os/PersistableBundle;

    .line 120
    invoke-static {v1, v3}, Lcom/google/android/setupcompat/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/setupcompat/a/a;->d:Landroid/os/PersistableBundle;

    iget-object p1, p1, Lcom/google/android/setupcompat/a/a;->d:Landroid/os/PersistableBundle;

    .line 121
    invoke-static {v1, p1}, Lcom/google/android/setupcompat/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 126
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/setupcompat/a/a;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/setupcompat/a/a;->b:Lcom/google/android/setupcompat/a/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/setupcompat/a/a;->c:Landroid/os/PersistableBundle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/setupcompat/a/a;->d:Landroid/os/PersistableBundle;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2028
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/google/android/setupcompat/a/a;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-object v0, p0, Lcom/google/android/setupcompat/a/a;->b:Lcom/google/android/setupcompat/a/b;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object p2, p0, Lcom/google/android/setupcompat/a/a;->c:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 106
    iget-object p2, p0, Lcom/google/android/setupcompat/a/a;->d:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    return-void
.end method
