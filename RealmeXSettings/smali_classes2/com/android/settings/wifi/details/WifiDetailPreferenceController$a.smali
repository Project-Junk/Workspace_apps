.class final Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;
.super Ljava/lang/Object;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;->a:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/android/settings/m;->a(IIZ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
