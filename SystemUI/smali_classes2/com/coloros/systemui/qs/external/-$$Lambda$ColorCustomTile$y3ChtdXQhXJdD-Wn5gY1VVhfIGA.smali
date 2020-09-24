.class public final synthetic Lcom/coloros/systemui/qs/external/-$$Lambda$ColorCustomTile$y3ChtdXQhXJdD-Wn5gY1VVhfIGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/external/-$$Lambda$ColorCustomTile$y3ChtdXQhXJdD-Wn5gY1VVhfIGA;->f$0:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/qs/external/-$$Lambda$ColorCustomTile$y3ChtdXQhXJdD-Wn5gY1VVhfIGA;->f$0:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcom/coloros/systemui/qs/external/ColorCustomTile;->lambda$getTileIconSupplier$1(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method
