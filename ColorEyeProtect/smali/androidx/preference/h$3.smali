.class Landroidx/preference/h$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/h;->a(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/PreferenceGroup;

.field final synthetic b:Landroidx/preference/h;


# direct methods
.method constructor <init>(Landroidx/preference/h;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/h$3;->b:Landroidx/preference/h;

    iput-object p2, p0, Landroidx/preference/h$3;->a:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Landroidx/preference/h$3;->a:Landroidx/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->a(I)V

    iget-object v0, p0, Landroidx/preference/h$3;->b:Landroidx/preference/h;

    invoke-virtual {v0, p1}, Landroidx/preference/h;->b(Landroidx/preference/Preference;)V

    iget-object p0, p0, Landroidx/preference/h$3;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->d()Landroidx/preference/PreferenceGroup$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/preference/PreferenceGroup$a;->a()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
