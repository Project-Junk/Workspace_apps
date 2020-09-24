.class public final Lcom/google/android/setupcompat/a/b;
.super Ljava/lang/Object;
.source "MetricKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/setupcompat/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/google/android/setupcompat/a/b$1;

    invoke-direct {v0}, Lcom/google/android/setupcompat/a/b$1;-><init>()V

    sput-object v0, Lcom/google/android/setupcompat/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "^[a-zA-Z][a-zA-Z0-9_]+"

    .line 123
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/a/b;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/android/setupcompat/a/b;->a:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/google/android/setupcompat/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/setupcompat/a/b;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x5

    const-string v1, "MetricKey.name"

    const/16 v2, 0x1e

    .line 47
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/setupcompat/internal/k;->a(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, "MetricKey.screenName"

    const/16 v2, 0x32

    .line 48
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/setupcompat/internal/k;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 50
    sget-object v0, Lcom/google/android/setupcompat/a/b;->c:Ljava/util/regex/Pattern;

    .line 51
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Invalid MetricKey, only alpha numeric characters are allowed."

    .line 50
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/g;->a(ZLjava/lang/String;)V

    .line 53
    sget-object v0, Lcom/google/android/setupcompat/a/b;->c:Ljava/util/regex/Pattern;

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 53
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/g;->a(ZLjava/lang/String;)V

    .line 56
    new-instance v0, Lcom/google/android/setupcompat/a/b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/setupcompat/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 98
    :cond_0
    instance-of v1, p1, Lcom/google/android/setupcompat/a/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 101
    :cond_1
    check-cast p1, Lcom/google/android/setupcompat/a/b;

    .line 102
    iget-object v1, p0, Lcom/google/android/setupcompat/a/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/setupcompat/a/b;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/setupcompat/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/setupcompat/a/b;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/setupcompat/a/b;->b:Ljava/lang/String;

    .line 103
    invoke-static {v1, p1}, Lcom/google/android/setupcompat/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 108
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/setupcompat/a/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/setupcompat/a/b;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1028
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 89
    iget-object p2, p0, Lcom/google/android/setupcompat/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/google/android/setupcompat/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
