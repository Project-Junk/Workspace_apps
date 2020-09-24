.class final Lcom/android/settings/localepicker/a$2;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/localepicker/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/localepicker/LocaleDragCell;

.field final synthetic b:Lcom/android/settings/localepicker/a;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/a;Lcom/android/settings/localepicker/LocaleDragCell;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/settings/localepicker/a$2;->b:Lcom/android/settings/localepicker/a;

    iput-object p2, p0, Lcom/android/settings/localepicker/a$2;->a:Lcom/android/settings/localepicker/LocaleDragCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/android/settings/localepicker/a$2;->a:Lcom/android/settings/localepicker/LocaleDragCell;

    .line 173
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 174
    invoke-virtual {p1, p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    return-void
.end method
