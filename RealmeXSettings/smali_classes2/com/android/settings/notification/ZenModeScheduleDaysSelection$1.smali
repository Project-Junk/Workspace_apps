.class final Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleDaysSelection;-><init>(Landroid/content/Context;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;I)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;->b:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    iput p2, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;->b:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->a(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;->a:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;->b:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->b(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->a([I)V

    return-void
.end method
