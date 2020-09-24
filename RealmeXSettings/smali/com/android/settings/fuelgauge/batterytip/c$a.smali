.class public final Lcom/android/settings/fuelgauge/batterytip/c$a;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/c$a;->a:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/settings/fuelgauge/batterytip/c;
    .locals 2

    .line 133
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batterytip/c;-><init>(Lcom/android/settings/fuelgauge/batterytip/c$a;B)V

    return-object v0
.end method
