.class public final Lcom/coloros/settings/utils/av;
.super Ljava/lang/Object;
.source "SettingAnimationUtils.java"


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/coloros/settings/utils/av$1;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/utils/av$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/settings/utils/av;->a:Landroid/util/Property;

    .line 38
    new-instance v0, Lcom/coloros/settings/utils/av$2;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/coloros/settings/utils/av$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/settings/utils/av;->b:Landroid/util/FloatProperty;

    return-void
.end method
