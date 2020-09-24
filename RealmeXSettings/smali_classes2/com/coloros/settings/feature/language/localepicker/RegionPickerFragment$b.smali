.class final Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$b;
.super Lcom/coloros/settings/feature/language/localepicker/c;
.source "RegionPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic e:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/language/region/d;",
            ">;)V"
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$b;->e:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    .line 487
    invoke-direct {p0, p2, p3, p4}, Lcom/coloros/settings/feature/language/localepicker/c;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$b;->e:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
