.class public final Lcom/coloros/settings/feature/process/RunningApplications$a;
.super Ljava/lang/Object;
.source "RunningApplications.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/process/RunningApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field g:F

.field h:F

.field i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 211
    instance-of v0, p1, Lcom/coloros/settings/feature/process/RunningApplications$a;

    if-eqz v0, :cond_0

    .line 212
    check-cast p1, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget p1, p1, Lcom/coloros/settings/feature/process/RunningApplications$a;->g:F

    iget v0, p0, Lcom/coloros/settings/feature/process/RunningApplications$a;->g:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
